SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE ph.PostHistoryTypeId = 16
AND u.Reputation >= 180
AND u.Views >= 111
AND u.DownVotes >= 14
AND u.UpVotes >= 109
AND u.UpVotes <= 366
AND c.CreationDate <= 1333
AND u.CreationDate >= 234
AND u.CreationDate <= 983

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;