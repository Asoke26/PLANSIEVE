SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 13
AND p.AnswerCount <= 11.0
AND p.CommentCount >= 3
AND p.CommentCount <= 11

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;