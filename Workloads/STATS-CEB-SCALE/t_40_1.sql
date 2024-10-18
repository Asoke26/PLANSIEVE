SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE p.Score >= 13
AND p.Score <= 75
AND p.AnswerCount <= 19.0
AND p.CommentCount = 4

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;