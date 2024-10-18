SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.Score >= 73
AND p.FavoriteCount >= 12.0
AND p.FavoriteCount <= 29.0
AND u.DownVotes <= 37
AND u.UpVotes >= 32
AND v.CreationDate <= 855
AND b.Date >= 705
AND b.Date <= 893
AND u.CreationDate >= 63

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;