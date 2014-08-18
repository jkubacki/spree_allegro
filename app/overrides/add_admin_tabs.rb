Deface::Override.new(
    virtual_path: 'spree/admin/shared/_product_tabs',
    name: 'product_assembly_admin_product_tabs_allegro',
    insert_bottom: "[data-hook='admin_product_tabs']",
    partial: 'spree/admin/shared/product_allegro_product_tabs',
    disabled: false)