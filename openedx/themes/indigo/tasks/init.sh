# Assign themes only if no other theme exists yet
./manage.py lms shell -c "
import sys
from django.contrib.sites.models import Site
def assign_theme(domain):
    site, _ = Site.objects.get_or_create(domain=domain)
    if not site.themes.exists():
        site.themes.create(theme_dir_name='indigo')

assign_theme('learn2-dev.ku.th')
assign_theme('learn2-dev.ku.th')
assign_theme('learn2-dev.ku.th:8000')
assign_theme('studio.learn2-dev.ku.th')
assign_theme('studio.learn2-dev.ku.th:8001')
assign_theme('preview.learn2-dev.ku.th')
assign_theme('preview.learn2-dev.ku.th:8000')
"