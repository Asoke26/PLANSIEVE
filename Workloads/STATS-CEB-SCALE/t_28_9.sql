SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.Score >= 44
AND p.FavoriteCount >= 15.0
AND p.FavoriteCount <= 65.0
AND u.DownVotes <= 24
AND u.UpVotes >= 242
AND v.CreationDate <= 1468
AND b.Date >= 578
AND b.Date <= 1529
AND u.CreationDate >= 134

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;