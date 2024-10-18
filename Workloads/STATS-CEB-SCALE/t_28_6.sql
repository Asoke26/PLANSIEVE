SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.Score >= 15
AND p.FavoriteCount >= 11.0
AND p.FavoriteCount <= 43.0
AND u.DownVotes <= 27
AND u.UpVotes >= 59
AND v.CreationDate <= 258
AND b.Date >= 124
AND b.Date <= 1130
AND u.CreationDate >= 148

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;