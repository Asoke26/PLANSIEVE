SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
users u
WHERE p.Score <= 23
AND p.AnswerCount >= 3.0
AND p.AnswerCount <= 28.0
AND p.CommentCount >= 4
AND p.FavoriteCount <= 6.0
AND ph.PostHistoryTypeId = 13
AND v.BountyAmount <= 500.0
AND u.DownVotes >= 143

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = v.UserId;