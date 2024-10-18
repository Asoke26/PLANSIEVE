SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE ph.PostHistoryTypeId = 33
AND u.Views >= 334
AND u.DownVotes >= 187
AND u.UpVotes >= 1264
AND u.UpVotes <= 2319
AND ph.CreationDate <= 1003
AND b.Date <= 550
AND u.CreationDate >= 171
AND u.CreationDate <= 779

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;