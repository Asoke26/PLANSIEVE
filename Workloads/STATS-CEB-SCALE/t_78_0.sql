SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 8
AND p.Score <= 57
AND p.AnswerCount <= 23.0
AND p.FavoriteCount >= 18.0
AND u.Reputation <= 1994
AND v.CreationDate >= 885
AND b.Date <= 416

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;