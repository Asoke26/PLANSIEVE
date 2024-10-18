SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE p.Score >= 18
AND p.Score <= 60
AND p.AnswerCount <= 18.0
AND p.CommentCount = 16

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;