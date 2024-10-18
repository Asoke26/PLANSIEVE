SELECT COUNT(*)
 FROM postLinks pl,
posts p,
users u,
badges b
WHERE p.Score >= 9
AND p.Score <= 55
AND p.AnswerCount <= 10.0
AND p.CommentCount = 14

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;