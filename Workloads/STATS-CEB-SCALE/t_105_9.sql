SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE ph.PostHistoryTypeId = 13
AND u.Reputation >= 1088
AND u.Views >= 783
AND u.DownVotes >= 25
AND u.UpVotes >= 220
AND u.UpVotes <= 1273
AND c.CreationDate <= 1358
AND u.CreationDate >= 487
AND u.CreationDate <= 963

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;