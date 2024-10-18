SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
users u
WHERE p.Score <= 129
AND p.AnswerCount >= 14.0
AND p.AnswerCount <= 21.0
AND p.CommentCount >= 7
AND p.FavoriteCount <= 26.0
AND ph.PostHistoryTypeId = 35
AND v.BountyAmount <= 300.0
AND u.DownVotes >= 44

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = v.UserId;