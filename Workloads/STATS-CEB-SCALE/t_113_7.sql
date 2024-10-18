SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE ph.PostHistoryTypeId = 6
AND u.Views >= 170
AND u.DownVotes >= 48
AND u.UpVotes >= 2
AND u.UpVotes <= 518
AND ph.CreationDate <= 615
AND b.Date <= 427
AND u.CreationDate >= 207
AND u.CreationDate <= 650

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;