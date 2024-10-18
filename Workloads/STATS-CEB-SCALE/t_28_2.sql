SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.Score >= 12
AND p.FavoriteCount >= 35.0
AND p.FavoriteCount <= 61.0
AND u.DownVotes <= 37
AND u.UpVotes >= 205
AND v.CreationDate <= 348
AND b.Date >= 584
AND b.Date <= 1327
AND u.CreationDate >= 31

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;