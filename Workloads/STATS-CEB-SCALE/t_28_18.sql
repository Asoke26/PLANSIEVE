SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.Score >= 11
AND p.FavoriteCount >= 7.0
AND p.FavoriteCount <= 18.0
AND u.DownVotes <= 200
AND u.UpVotes >= 244
AND v.CreationDate <= 1443
AND b.Date >= 1025
AND b.Date <= 1521
AND u.CreationDate >= 431

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;