SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE ph.PostHistoryTypeId = 3
AND u.Views >= 298
AND u.DownVotes >= 49
AND u.UpVotes >= 523
AND u.UpVotes <= 1160
AND ph.CreationDate <= 1277
AND b.Date <= 1093
AND u.CreationDate >= 37
AND u.CreationDate <= 549

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;