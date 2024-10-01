{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is none -%}

        {{ default_schema }}

    {%- elif env_var('DBT_MY_ENV','') == 'dev' -%}

       {{ custom_schema_name | trim }}

    {%- else -%}

        {{ default_schema }}

    {%- endif -%}

{%- endmacro %}