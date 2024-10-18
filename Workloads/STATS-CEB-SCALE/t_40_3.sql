SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE p.Score >= 11
AND p.Score <= 99
AND p.AnswerCount <= 12.0
AND p.CommentCount = 9

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;