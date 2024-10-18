SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score>=-1
AND p.Score<=14
AND u.DownVotes>=0
AND pl.CreationDate<=1464
AND v.CreationDate>=1
AND b.Date>=43
AND b.Date<=1533

AND u.Id = p.OwnerUserId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId;