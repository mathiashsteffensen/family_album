module ApplicationHelper
  def component(name, **args, &block)
    render "components/#{name}", args: args, &block
  end

  def session_path
    super(id: "a")
  end
end
