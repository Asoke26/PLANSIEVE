SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
users u
WHERE p.Score <= 57
AND p.AnswerCount >= 6.0
AND p.AnswerCount <= 21.0
AND p.CommentCount >= 2
AND p.FavoriteCount <= 37.0
AND ph.PostHistoryTypeId = 3
AND v.BountyAmount <= 400.0
AND u.DownVotes >= 49

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = v.UserId;