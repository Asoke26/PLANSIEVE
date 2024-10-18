SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE ph.PostHistoryTypeId = 12
AND u.Views >= 80
AND u.DownVotes >= 34
AND u.UpVotes >= 186
AND u.UpVotes <= 449
AND ph.CreationDate <= 1249
AND b.Date <= 1436
AND u.CreationDate >= 213
AND u.CreationDate <= 365

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;