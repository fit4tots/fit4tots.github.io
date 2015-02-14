---
---
{% capture cache %}

{% include_relative vendor/jquery.min.js %}
{% include_relative vendor/fastclick.min.js %}
{% include_relative vendor/foundation-5.5.1/foundation.min.js %}
{% include_relative vendor/foundation-5.5.1/foundation.interchange.min.js %}
{% include_relative vendor/foundation-5.5.1/foundation.topbar.min.js %}

{% comment %}
All the possible foundation modules:
  foundation
  foundation.abide
  foundation.accordion
  foundation.alert
  foundation.clearing
  foundation.dropdown
  foundation.interchange
  foundation.joyride
  foundation.magellan
  foundation.offcanvas
  foundation.orbit
  foundation.reveal
  foundation.slider
  foundation.tab
  foundation.tooltip
  foundation.topbar
  foundation.equalizer
{% endcomment %}

{% endcapture %}{{ cache | strip_newlines }}