SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.Score >= 2
AND p.FavoriteCount >= 47.0
AND p.FavoriteCount <= 88.0
AND u.DownVotes <= 11
AND u.UpVotes >= 4
AND v.CreationDate <= 1081
AND b.Date >= 139
AND b.Date <= 559
AND u.CreationDate >= 256

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;