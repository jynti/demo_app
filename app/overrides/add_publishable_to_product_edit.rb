Deface::Override.new(:virtual_path => 'spree/admin/products/_form',
                                          :name => 'marks_publishable_checkbox',
                                          :insert_after => "erb[loud]:contains('field_container :promotionable')",
                                          :text => "
                                                            <div data-hook='admin_product_form_publishable'>
                                                              <%= f.field_container :publishable, class: ['form-group'] do %>
                                                                <%= f.label :publishable, Spree.t(:publishable) %>
                                                                <%= f.error_message_on :publishable %>
                                                                <%= f.check_box :publishable, class: 'form-control' %>
                                                              <% end %>
                                                            </div>

  ")
