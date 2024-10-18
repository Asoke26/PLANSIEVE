SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
users u
WHERE p.Score <= 42
AND p.AnswerCount >= 12.0
AND p.AnswerCount <= 42.0
AND p.CommentCount >= 1
AND p.FavoriteCount <= 45.0
AND ph.PostHistoryTypeId = 34
AND v.BountyAmount <= 100.0
AND u.DownVotes >= 82

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = v.UserId;