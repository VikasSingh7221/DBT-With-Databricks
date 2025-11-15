{%- set fruits = ["Apple", "Mango", "Orange", "Banana"] -%}

{%- for fruit in fruits -%}
    {% if fruit == "Mango" %}
        "{{ fruit ~ ' * is my favorite fruit.' }}"
    {% else %}
        "{{ fruit ~ ' * is a fruit.' }}"
    {% endif %}
{% endfor %}
