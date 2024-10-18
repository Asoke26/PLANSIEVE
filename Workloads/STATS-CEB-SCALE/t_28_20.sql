SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.Score >= 11
AND p.FavoriteCount >= 42.0
AND p.FavoriteCount <= 75.0
AND u.DownVotes <= 23
AND u.UpVotes >= 449
AND v.CreationDate <= 1352
AND b.Date >= 569
AND b.Date <= 1327
AND u.CreationDate >= 119

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;