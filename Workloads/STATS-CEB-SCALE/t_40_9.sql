SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE p.Score >= -1
AND p.Score <= 26
AND p.AnswerCount <= 28.0
AND p.CommentCount = 37

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;