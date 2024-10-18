SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.Score >= 29
AND p.FavoriteCount >= 5.0
AND p.FavoriteCount <= 45.0
AND u.DownVotes <= 125
AND u.UpVotes >= 50
AND v.CreationDate <= 910
AND b.Date >= 431
AND b.Date <= 635
AND u.CreationDate >= 341

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;