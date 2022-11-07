module ComponentHelper
  def bg_color_from_variant(variant)
    case variant
    when nil, :primary
      "bg-sky-700"
    when :danger
      "bg-rose-600"
    when :dark
      "bg-slate-700"
    end
  end

  def bg_opaque_color_from_variant(variant)
    case variant
    when nil, :primary
      "bg-sky-700/50"
    when :danger
      "bg-rose-600/50"
    when :dark
      "bg-slate-700/50"
    end
  end

  def bg_hover_color_from_variant(variant)
    case variant
    when nil, :primary
      "hover:bg-sky-800"
    when :danger
      "hover:bg-rose-700"
    when :dark
      "hover:bg-slate-800"
    end
  end

  def text_color_from_variant(variant)
    case variant
    when nil, :primary
      "text-sky-300"
    when :danger
      "text-rose-300"
    when :dark
      "text-slate-800"
    end
  end

  def border_color_from_variant(variant)
    case variant
    when nil, :primary
      "border-sky-700"
    when :danger
      "border-rose-600"
    when :dark
      "border-slate-700"
    end
  end
end
