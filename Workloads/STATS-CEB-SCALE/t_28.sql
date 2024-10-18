SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId=1
AND p.Score>=-1
AND p.FavoriteCount>=0
AND p.FavoriteCount<=20
AND u.DownVotes<=2
AND u.UpVotes>=0
AND v.CreationDate<=1543
AND b.Date>=28
AND b.Date<=1534
AND u.CreationDate>=157

AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;