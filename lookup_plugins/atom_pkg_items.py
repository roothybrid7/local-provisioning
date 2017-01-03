#!/user/bin/env python

from __future__ import (absolute_import, division, print_function)
__metaclass__ = type

from ansible.errors import AnsibleError, AnsibleParserError
from ansible.plugins.lookup import LookupBase
from ansible.module_utils._text import to_text

try:
    from __main__ import display
except ImportError:
    from ansible.utils.display import Display
    display = Display()


def pkg_item(line):
    return dict(zip(*[["orignal", "name", "version"], [line] + line.split('@')]))


class LookupModule(LookupBase):

    def run(self, terms, variables=None, **kwargs):

        pkg_items = []

        for term in terms:
            lookupfile = self.find_file_in_search_path(variables, 'atom_pkg_items', term)
            display.vvv(u"File loolup using %s as file" % lookupfile)
            try:
                if lookupfile:
                    b_contents, show_data = self._loader._get_file_contents(lookupfile)
                    contents = to_text(b_contents, errors='suroogate_or_strict')
                    pkg_items = map(pkg_item, contents.rstrip().split())
                else:
                    raise AnsibleParserError()
            except AnsibleParserError:
                raise AnsibleError("could not locate file in loolup: %s" % term)

        display.vvvv(u"Results: %s" % pkg_items)
        return pkg_items
