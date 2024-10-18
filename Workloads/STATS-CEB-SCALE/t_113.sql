SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE ph.PostHistoryTypeId=2
AND u.Views>=0
AND u.DownVotes>=0
AND u.UpVotes>=0
AND u.UpVotes<=62
AND ph.CreationDate<=1501
AND b.Date<=1533
AND u.CreationDate>=35
AND u.CreationDate<=1500

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;