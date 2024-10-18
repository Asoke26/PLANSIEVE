SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.Score >= -5
AND p.FavoriteCount >= 11.0
AND p.FavoriteCount <= 56.0
AND u.DownVotes <= 11
AND u.UpVotes >= 582
AND v.CreationDate <= 690
AND b.Date >= 174
AND b.Date <= 1469
AND u.CreationDate >= 123

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;