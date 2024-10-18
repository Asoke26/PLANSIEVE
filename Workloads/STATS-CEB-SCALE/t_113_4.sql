SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE ph.PostHistoryTypeId = 1
AND u.Views >= 27
AND u.DownVotes >= 104
AND u.UpVotes >= 37
AND u.UpVotes <= 49
AND ph.CreationDate <= 1013
AND b.Date <= 1339
AND u.CreationDate >= 409
AND u.CreationDate <= 633

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;