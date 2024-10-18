SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.Score >= -9
AND p.FavoriteCount >= 1.0
AND p.FavoriteCount <= 2.0
AND u.DownVotes <= 11
AND u.UpVotes >= 51
AND v.CreationDate <= 776
AND b.Date >= 1223
AND b.Date <= 1274
AND u.CreationDate >= 162

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;