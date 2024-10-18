SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE ph.PostHistoryTypeId=2
AND u.Reputation>=1
AND u.Views>=0
AND u.DownVotes>=0
AND u.UpVotes>=0
AND u.UpVotes<=15
AND c.CreationDate<=1528
AND u.CreationDate>=73
AND u.CreationDate<=1518

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;