module MiniResumesHelper

  # 性别 #
  def render_mini_resume_sex(mini_resume)
    if mini_resume.sex == 1
      '男'
    else
      '女'
    end
  end
  # 要求薪水区间 #
  def render_mini_resume_wage(mini_resume)
    "#{mini_resume.wage_lower_bound} k ~ #{mini_resume.wage_upper_bound} k"
  end

  # 创建时间格式化
  def render_mini_resume_time(mini_resume)
    mini_resume.created_at.strftime("%Y-%m-%d %H:%M:%S")
  end

  # 职位被收藏数量
  def render_mini_resume_collectors_count(mini_resume)
    count = mini_resume.mini_resume_collectors.count
    if count > 0
      content_tag(:span, count, :class => "fa fa-heart")
    else
      content_tag(:span, count, :class => "fa fa-heart-o")
    end
  end

end
