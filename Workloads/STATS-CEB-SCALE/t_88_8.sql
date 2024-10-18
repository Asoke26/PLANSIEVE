SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 13
AND p.CommentCount >= 0
AND p.CommentCount <= 23
AND u.DownVotes = 5
AND u.UpVotes >= 29
AND u.UpVotes <= 1014

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;