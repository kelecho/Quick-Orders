module OrdersHelper
  def status_klass(status)
    return 'bg-primary' if status == 'in_line'
    return 'bg-info' if status == 'preparing'
    return 'bg-success' if status == 'ready'
    return 'bg-secondary' if status == 'finished'
    return 'bg-secondary' if status == 'canceled'
  end
end
