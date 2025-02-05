---
title: "Research"
layout: page
---


# Working Papers 

{% bibliography --query @*[keywords ~= underreview]%}

# Journal Articles

{% bibliography --sort_by year --order descending --query @*[keywords ~= journal]%}

# Conference Proceedings

{% bibliography --sort_by year --order descending --query @*[keywords ~= conference]%}

# Other Research Outputs

{% bibliography --sort_by year --order descending --query @*[keywords ~= abstract]%}

