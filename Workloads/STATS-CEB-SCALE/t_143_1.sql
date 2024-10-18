SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount >= 3.0
AND p.CommentCount >= 9
AND u.Reputation >= 210
AND u.Reputation <= 402
AND u.DownVotes >= 48
AND b.Date <= 1185

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND p.Id = ph.PostId;