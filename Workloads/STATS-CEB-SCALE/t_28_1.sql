SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.Score >= 48
AND p.FavoriteCount >= 10.0
AND p.FavoriteCount <= 36.0
AND u.DownVotes <= 21
AND u.UpVotes >= 1
AND v.CreationDate <= 1274
AND b.Date >= 638
AND b.Date <= 1142
AND u.CreationDate >= 535

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;