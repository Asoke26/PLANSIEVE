SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 23
AND p.CommentCount >= 11
AND p.CommentCount <= 26
AND u.DownVotes = 5
AND u.UpVotes >= 175
AND u.UpVotes <= 456

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;