SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.Score >= 9
AND p.FavoriteCount >= 6.0
AND p.FavoriteCount <= 65.0
AND u.DownVotes <= 59
AND u.UpVotes >= 109
AND v.CreationDate <= 913
AND b.Date >= 376
AND b.Date <= 899
AND u.CreationDate >= 219

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;