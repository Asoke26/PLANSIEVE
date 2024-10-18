SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score >= -9
AND p.ViewCount >= 3018.0
AND p.CommentCount <= 8
AND v.VoteTypeId = 9
AND c.CreationDate >= 444
AND ph.CreationDate >= 815
AND ph.CreationDate <= 912

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;