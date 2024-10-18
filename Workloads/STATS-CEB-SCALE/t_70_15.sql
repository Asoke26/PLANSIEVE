SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.CommentCount >= 20
AND ph.PostHistoryTypeId = 5
AND v.VoteTypeId = 16

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;