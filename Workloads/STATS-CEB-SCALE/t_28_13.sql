SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.Score >= 18
AND p.FavoriteCount >= 9.0
AND p.FavoriteCount <= 17.0
AND u.DownVotes <= 114
AND u.UpVotes >= 5
AND v.CreationDate <= 850
AND b.Date >= 29
AND b.Date <= 1444
AND u.CreationDate >= 200

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;