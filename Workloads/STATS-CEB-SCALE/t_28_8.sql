SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.Score >= 7
AND p.FavoriteCount >= 5.0
AND p.FavoriteCount <= 88.0
AND u.DownVotes <= 25
AND u.UpVotes >= 89
AND v.CreationDate <= 1152
AND b.Date >= 719
AND b.Date <= 1442
AND u.CreationDate >= 563

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;