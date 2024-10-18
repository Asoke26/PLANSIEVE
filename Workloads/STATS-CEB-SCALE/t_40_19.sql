SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE p.Score >= 31
AND p.Score <= 90
AND p.AnswerCount <= 35.0
AND p.CommentCount = 11

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;