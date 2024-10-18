SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score >= 31
AND p.ViewCount >= 1357.0
AND p.CommentCount <= 14
AND v.VoteTypeId = 15
AND c.CreationDate >= 290
AND ph.CreationDate >= 390
AND ph.CreationDate <= 1430

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;