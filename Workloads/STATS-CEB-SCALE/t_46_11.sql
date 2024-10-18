SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
users u
WHERE p.Score <= 68
AND p.AnswerCount >= 0.0
AND p.AnswerCount <= 23.0
AND p.CommentCount >= 12
AND p.FavoriteCount <= 32.0
AND ph.PostHistoryTypeId = 8
AND v.BountyAmount <= 150.0
AND u.DownVotes >= 3

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = v.UserId;