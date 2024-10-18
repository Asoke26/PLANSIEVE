SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE ph.PostHistoryTypeId = 13
AND u.Reputation >= 243
AND u.Views >= 61
AND u.DownVotes >= 60
AND u.UpVotes >= 39
AND u.UpVotes <= 123
AND c.CreationDate <= 921
AND u.CreationDate >= 579
AND u.CreationDate <= 980

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;