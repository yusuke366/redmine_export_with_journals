module IssuesExportHelper
  def add_journals(csv)
    csv_with_journals = CSV.generate do |newcsv|
      CSV.parse(Redmine::CodesetUtil.to_utf8(csv, 'CP932'), :headers => true, :return_headers => true) do |row|
        if row.header_row?
          newcsv << row.fields + [t(:label_history)]
        else
          Issue.find(row.fields.first).journals.each_with_index do |j, index|
            if index == 0
              newcsv << row.fields + [j.user.name + "\n" + j.details.map {|d| show_detail(d, true)}.join("\n") + "\n" + (j.notes.nil? ? '' :     j.notes)]
            else
              newcsv << ([""] * row.fields.length) + [j.user.name + "\n" + j.details.map {|d| show_detail(d, true)}.join("\n") + "\n" + (j.notes.nil? ? '' :     j.notes)]
            end  
          end
        end
      end
    end
    Redmine::CodesetUtil.from_utf8(csv_with_journals, 'CP932')
  end
end
