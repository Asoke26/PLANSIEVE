SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE ph.PostHistoryTypeId = 4
AND u.Views >= 197
AND u.DownVotes >= 19
AND u.UpVotes >= 14
AND u.UpVotes <= 212
AND ph.CreationDate <= 593
AND b.Date <= 595
AND u.CreationDate >= 195
AND u.CreationDate <= 683

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;