SELECT 
	issues.issue_key
	, changelogs.author_key
	, changelogs.to_status as status
	, issues.created_at
	, changelogs.created_at as change_date
	, EXTRACT(EPOCH FROM (changelogs.created_at - issues.created_at)) AS time_diff /*2 task*/
FROM public.issues
INNER JOIN public.changelogs ON public.issues.issue_key = public.changelogs.issue_key;

